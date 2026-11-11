.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, 70
mov ebx, 675401645
add cl, -94 # instrumentation
setnb al
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 61
add dl, cl
sub rsi, rbx
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
or bl, -88
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 95
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
add dil, -7
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 20
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
