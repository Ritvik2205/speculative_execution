.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or bl, al
and ax, 27170
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
not al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test dx, bx
or cl, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
