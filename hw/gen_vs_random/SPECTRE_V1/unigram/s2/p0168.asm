.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
setnz dil
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
test rsi, 47
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
add bl, 112 # instrumentation
setnbe dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, 18
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 31
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
lea di, qword ptr [rbx + rdx + 40]
add dl, 84
lea ecx, qword ptr [rsi]
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
add al, 110
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 67
mov dil, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
