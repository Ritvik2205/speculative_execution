.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 97
and al, bl
test al, 127
or sil, -78
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and al, bl
jmp .bb_0.2
.bb_0.2:
or ecx, edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xor dl, -43
test dil, sil
and dl, dl
and rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
