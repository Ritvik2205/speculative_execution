.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sub rax, -679751639
xchg rsi, rdx
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
mov bl, bl
and ecx, 67
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
xor cl, dl
and rbx, 54
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
xor bl, 5
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 39
test bl, sil
test bl, 30
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
cmovnbe si, dx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
movzx ecx, bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
