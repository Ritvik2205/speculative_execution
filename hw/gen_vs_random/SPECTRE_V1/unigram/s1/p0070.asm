.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
neg dil
lea si, qword ptr [rax + rdi + 89]
bt ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
add cl, 83 # instrumentation
setbe al
inc dx
add al, 21 # instrumentation
adc ax, 32514
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, sil
adc al, -82
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
mov al, bl
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
setp cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
