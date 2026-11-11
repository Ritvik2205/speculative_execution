.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx cx, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 86
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
add al, 110
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 1
add al, -121 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
setnl cl
sbb edi, 100
lea edx, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
