.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, sil
setnle al
add dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
adc rdx, 7
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
movsx rsi, al
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdi
btr eax, ebx
lea ebx, qword ptr [rdi + rcx + 26]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
or eax, 48
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], ecx
test dl, bl
or cl, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
