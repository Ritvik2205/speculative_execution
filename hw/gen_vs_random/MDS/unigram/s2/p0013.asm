.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and cl, -63
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rsi
and al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
xor ecx, ecx
cmovz esi, edx
bt eax, eax
cmovle ax, ax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
or di, -18
bt rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
bt ebx, ebx
cmovl ebx, ebx
or eax, edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 42
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
