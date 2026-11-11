.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
setno dil
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rdx, rsi
sbb cl, 83
setle al
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
xor edi, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
