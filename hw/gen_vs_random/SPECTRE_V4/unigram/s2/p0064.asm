.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
neg ebx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 10
add cl, -58 # instrumentation
cmovnz ebx, esi
add dil, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovbe bx, si
cmovnp bx, di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
or dil, 89
xor rdi, -72
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovs esi, ebx
sbb rcx, rax
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and cl, cl
cmovbe dx, ax
cmovp rcx, rdx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
cmovns ax, di
test dil, dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sub rdx, 22
sub eax, -638345541
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or bx, -33
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
add cl, -9
add sil, dl
sub rax, rax
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 99
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
xor bl, -126
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
