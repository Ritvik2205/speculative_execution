.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
bts rcx, rbx
and al, 49
jmp .bb_0.1
.bb_0.1:
or ebx, eax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test sil, -55
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
not cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
test dl, bl
test rdx, 79
test rax, 1949278494
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
