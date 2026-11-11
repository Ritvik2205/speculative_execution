.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, -77
add bl, bl
mov al, 7
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
lea eax, qword ptr [rbx]
cmp al, -77
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
