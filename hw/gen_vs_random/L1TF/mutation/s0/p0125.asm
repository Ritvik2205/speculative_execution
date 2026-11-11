.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
lea di, qword ptr [rsi + rax + 38960]
setnbe dl
setnbe bl
setnb sil
mov bl, al
sbb dl, cl
test cx, -20370
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
cmovo rbx, rax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
jmp .bb_0.1
.bb_0.1:
mov dl, dl
test rsi, rax
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
adc edi, 122
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and bl, 125
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
