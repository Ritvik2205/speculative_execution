.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno cx, cx
lea si, qword ptr [rbx]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
inc sil
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
cmp ecx, eax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
setle bl
add al, 27 # instrumentation
sbb ecx, edx
movzx rax, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
sub ax, 19828
add bl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
