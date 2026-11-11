.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
or bl, al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
btr rdi, rcx
cmovle edi, esi
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
xor bx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
xor bx, ax
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovle ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
add dl, -99 # instrumentation
not edx
and eax, -37
add sil, 110
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
bts edi, 167
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test sil, al
add dl, 56 # instrumentation
cmovle rbx, rdx
test sil, dil
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
btr bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
or sil, 4
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rax
movzx edx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
