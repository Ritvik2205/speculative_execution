.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, bl
test bl, -116
cmovno ecx, edx
sbb rcx, rax
cmovnb rbx, rax
or al, -90
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
cmovz ebx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -58 # instrumentation
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovnb di, bx
or cx, 59
cmovl eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
mul al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -11
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
cmp esi, -84
cmovbe edx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor cl, dl
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
or bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
test eax, 1947430392
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
movsx esi, si
dec rdi
not sil
add rsi, 44
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
imul si, dx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
sub bl, dl
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
or rax, -943474997
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
sub dil, -40
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
