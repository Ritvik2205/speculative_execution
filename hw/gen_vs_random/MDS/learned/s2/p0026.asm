.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 15401
test eax, 758789512
mov dl, dl
cmovnp rbx, rax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
mov dl, dl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
mov rdx, 85
cmovnl ebx, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
sbb cl, dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
or cl, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 24
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and al, -56 # instrumentation
cmovl rdx, rcx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
