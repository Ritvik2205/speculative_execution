.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
add bl, 90 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
bt edx, 89
add bl, 112 # instrumentation
setnbe al
movsx dx, bl
lea rbx, qword ptr [rax]
add dil, 73 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
or ax, dx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
sub edx, 67
sub rdx, 85
mul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
