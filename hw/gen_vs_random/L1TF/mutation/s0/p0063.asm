.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
not cl
movzx rbx, sil
and rdx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -20
jmp .bb_0.2
.bb_0.2:
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
test cx, 32579
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
cmovo rbx, rax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
