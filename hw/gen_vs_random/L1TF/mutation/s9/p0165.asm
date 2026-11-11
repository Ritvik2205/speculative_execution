.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
sbb cl, al
or al, -2
lea di, qword ptr [rdx]
lea rax, qword ptr [rsi]
lea rax, qword ptr [rdi + rax + 36248]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
inc eax
sub dl, -49
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
imul dl
add cl, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
