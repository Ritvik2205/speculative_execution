.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or sil, cl
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub al, bl
test ecx, -907816607
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
adc sil, 77
or dl, -26
cmp al, 109
btc rcx, rdx
xor dl, cl
sub dil, -40
and sil, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
