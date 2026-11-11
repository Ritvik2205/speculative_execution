.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
add cl, -41 # instrumentation
adc ax, di
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and dl, 32
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
xor al, al
jmp .bb_0.1
.bb_0.1:
cmp esi, 110
lea edx, qword ptr [rsi + rsi]
setnbe cl
xor ax, 32760
or eax, 1495028166
lea di, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
sbb al, dl
cmovs di, dx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
adc esi, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
