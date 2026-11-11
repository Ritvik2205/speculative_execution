.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 38
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
cmovno rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and cl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dil
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 34
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and cx, 90
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
add sil, sil
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
setnp cl
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
add dl, 47
cmovns rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
