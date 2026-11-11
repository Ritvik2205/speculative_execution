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
or eax, 1802312508
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
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
cmovle ebx, esi
test rax, -331426050
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 92
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
cmovnl rax, rax
movzx ecx, sil
test ebx, -595096626
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovnbe rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xchg rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rdx
not bx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
test rcx, -2118888343
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
test eax, -818909344
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
not cx
and bl, dl
imul cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 21
cmovl rdi, rcx
test ebx, -595096626
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
