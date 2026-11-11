.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
bt di, 236
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
lea eax, qword ptr [rcx + rdi + 54]
lea rdx, qword ptr [rbx + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub ebx, 82
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
test eax, 21
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
cmovl eax, edi
sub ax, cx
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
