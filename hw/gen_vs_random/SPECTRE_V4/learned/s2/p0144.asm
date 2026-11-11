.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and al, 5
test sil, 1
sub bl, 56
test al, 18
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test al, 115
xor ax, di
test ecx, 860867711
cmp al, bl
or al, sil
mov al, bl
mov dl, 81
xor ax, -29507
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
