.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
setnl dl
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
xor bl, bl
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
mov bl, bl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
dec rdi
lea edx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
xor eax, -764881786
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
