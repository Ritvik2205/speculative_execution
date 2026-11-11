.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
sub dl, bl
and bl, cl
mov eax, edx
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
cmp dl, -115
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
sub sil, bl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
imul dl
movsx eax, al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
or cx, 73
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
