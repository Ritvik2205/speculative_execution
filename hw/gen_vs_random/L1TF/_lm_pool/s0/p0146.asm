.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
test rsi, rcx
bts rcx, 2
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
not bl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmp al, dl
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
