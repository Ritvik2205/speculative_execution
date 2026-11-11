.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
test al, al
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
cmovnb si, si
xchg rbx, rcx
neg bl
test bl, dl
adc dil, bl
cmovb rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
mov rdx, -3088288992777791879
or bl, 61
and bx, 49
mov dl, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
adc dl, 72
or dx, di
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
cmovnle rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
xor rax, rdi
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
or edi, edx
cmp rdx, -49
bt esi, 35
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
cmovbe rcx, rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add dl, 40 # instrumentation
cmovnp rcx, rdx
add dil, 122 # instrumentation
cmovz di, dx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
or cx, 23
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
test al, 27
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
cmovbe rcx, rsi
add al, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 82
xor sil, sil
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
