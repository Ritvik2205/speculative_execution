.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 115 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
cmovs ax, bx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
setz al
and rsi, 9
sub bl, sil
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
bts dx, 207
add ecx, 59
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and ebx, 97
lea rax, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
