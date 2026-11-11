.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -33 # instrumentation
cmovnl bx, si
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovb bx, si
add bl, -9 # instrumentation
adc rdx, 55
add bl, dil
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
lea rax, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
or cx, 69
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
