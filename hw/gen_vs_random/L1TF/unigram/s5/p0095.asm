.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -9 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 84
lea rbx, qword ptr [rdi + rcx + 1]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmovl ecx, edi
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
btc si, bx
add dil, 65 # instrumentation
cmovo rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 39
lea rdi, qword ptr [rax]
add sil, al
xor di, 30
add cl, -20
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
