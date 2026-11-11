.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 72
cmp rdi, 96
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
add sil, dil
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
or dx, 71
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 126 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
imul ebx, edi
add al, 127 # instrumentation
sets sil
lea rdi, qword ptr [rbx + rcx]
add bl, -107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
cmp di, 12
bt edi, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
