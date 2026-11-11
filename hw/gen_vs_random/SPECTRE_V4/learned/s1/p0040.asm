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
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
adc rdi, rdx
cmovnle si, cx
test eax, -818909344
cmovs edi, eax
cmovle ebx, ecx
or cl, 5
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
sub rax, -701741274
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovnl rax, rax
movzx ecx, sil
test ebx, -595096626
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
cmovnbe rax, rdx
and bl, dl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
sub sil, -50
cmovnbe rbx, rdi
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
xor bl, cl
sbb dl, dil
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
adc al, cl
test bl, 24
cmovb di, di
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
