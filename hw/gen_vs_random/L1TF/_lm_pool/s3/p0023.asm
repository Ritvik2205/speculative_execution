.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
or dl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and dl, -49
or rcx, 17
jmp .bb_0.1
.bb_0.1:
or al, -5
btc ax, dx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
adc esi, -41
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
