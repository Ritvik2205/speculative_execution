.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ebx, eax
add cl, -23 # instrumentation
cmovl di, dx
setp dil
add sil, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
mov bl, dil
lea rcx, qword ptr [rdx + rbx]
or edx, 35
lea eax, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
lea eax, qword ptr [rdx + rdx + 39359]
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
