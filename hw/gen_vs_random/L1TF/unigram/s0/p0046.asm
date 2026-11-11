.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 34
movzx si, cl
add bl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
lea esi, qword ptr [rbx + rsi]
bt ax, ax
adc cl, dl
add ecx, edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
jmp .bb_0.1
.bb_0.1:
xchg dil, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
sub bl, cl
xor al, dl
cmovnp rcx, rcx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
