.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
lea di, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
sbb cl, al
lea rax, qword ptr [rdi + rax + 36248]
imul dl
sub dl, 41
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
add cl, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
inc eax
or al, -5
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
lea rax, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
