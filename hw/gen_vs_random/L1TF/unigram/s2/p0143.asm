.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
mul edi
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
add si, -5
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
cmovbe rdx, rcx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 80
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
add dl, 109 # instrumentation
cmovnb rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
