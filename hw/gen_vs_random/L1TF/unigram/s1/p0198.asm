.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
lea edi, qword ptr [rdx + rax + 62]
or sil, -44
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
setnz dl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
mov rdi, rax
add bl, dl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
add eax, -1
test dil, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
xor rcx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
