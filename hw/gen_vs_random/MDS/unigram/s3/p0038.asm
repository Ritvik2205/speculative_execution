.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
bt ebx, esi
bts rax, rbx
cmovnb edx, edx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
not dil
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
cmovs esi, esi
test bl, dl
and bl, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 19
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
or ebx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
