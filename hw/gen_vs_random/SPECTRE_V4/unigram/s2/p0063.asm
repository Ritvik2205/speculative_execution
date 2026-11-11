.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
test al, 57
btr edi, edi
sub rdx, 94
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
bt di, 75
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sub ecx, -107
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
cmp esi, ebx
cmovno rbx, rdi
and bl, -60
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
movzx di, bl
cmovnbe rbx, rdi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
or bl, dl
and ax, -603
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
sbb eax, 40509622
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
adc cl, dil
xor dl, -66
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
movsx bx, dil
inc si
or al, -16
cmovnb ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and al, cl
and dl, -11
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
cmovle rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
