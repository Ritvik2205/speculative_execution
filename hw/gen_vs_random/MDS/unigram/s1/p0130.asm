.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
cmovno rbx, rsi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
or al, al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
bt eax, ecx
cmovl rax, rcx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
test bl, cl
cmovl ebx, ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and dl, 57 # instrumentation
cmovnb di, cx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
or rsi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
