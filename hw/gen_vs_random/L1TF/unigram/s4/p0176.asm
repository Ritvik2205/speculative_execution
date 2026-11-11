.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rax
movzx ecx, di
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmp ecx, 66
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xchg dl, dl
not bx
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
setp cl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 35
test al, al
add cl, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
