.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test bl, cl
and bx, 19
and eax, 366961170
test eax, -675944960
test bl, -114
jmp .bb_0.1
.bb_0.1:
or dx, 125
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
