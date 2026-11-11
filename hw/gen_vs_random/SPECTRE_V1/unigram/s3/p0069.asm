.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx bx, cl
lea di, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rsi]
lea di, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 20
movsx rsi, si
xor bl, bl
add bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 61
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
