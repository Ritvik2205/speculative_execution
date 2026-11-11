.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], di
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
xor ecx, edx
and rcx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rcx]
and rdx, -98
adc edx, eax
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
add rax, -845342150
movsx rdx, di
mov al, al
mov sil, dil
or dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
