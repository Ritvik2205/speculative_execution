.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -92 # instrumentation
setnz dil
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
cmovl edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
setb dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 49
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 61
cmp al, al
seto sil
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
