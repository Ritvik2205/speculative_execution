.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 65
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and bl, 65 # instrumentation
cmovnbe bx, si
test rsi, 42
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
btr eax, esi
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and dx, 60
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
bt bx, dx
or al, bl
and sil, -40 # instrumentation
cmovle di, si
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
