.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, -1143711697
mul ax
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cmovnle edx, edi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
sub dl, sil
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
bts rax, rax
mov rsi, 6
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
