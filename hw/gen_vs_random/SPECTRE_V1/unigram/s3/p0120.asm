.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax + rdx + 25]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 55
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 53
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 65
cwde
btr rax, rcx
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
cmovp edx, ebx
add cl, 20 # instrumentation
cmovnbe rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
