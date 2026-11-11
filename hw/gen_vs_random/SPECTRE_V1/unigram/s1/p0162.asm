.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
lea bx, qword ptr [rcx + rbx + 2101]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
lea rdi, qword ptr [rax + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, bl
setp bl
test al, al
setle cl
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
movsx rax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
