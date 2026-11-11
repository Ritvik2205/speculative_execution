.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
add ax, 23614
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
cmovb dx, ax
btc bx, bx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 46
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
jmp .bb_0.1
.bb_0.1:
sub sil, dl
adc bl, bl
lea eax, qword ptr [rdi + rcx + 80]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
xor ecx, 13
and bl, bl
setno bl
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
