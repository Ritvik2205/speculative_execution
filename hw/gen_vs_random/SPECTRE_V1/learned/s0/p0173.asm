.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
cmovns edi, ecx
or dl, cl
setns dl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
test edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
setno al
movsx rdi, cx
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 86
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
sbb rcx, 98
setp sil
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
sbb rax, -148104813
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
test ecx, 729805876
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
