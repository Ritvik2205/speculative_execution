.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
xor rax, -270810088
or al, dil
and dl, al
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
xor dil, -70
btr ebx, eax
and dl, cl
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
bt edx, eax
and sil, sil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
