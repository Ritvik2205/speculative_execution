.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, sil
bts edi, ecx
imul al
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
sub si, 83
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
add sil, -40 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add dil, 64 # instrumentation
sbb dil, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
