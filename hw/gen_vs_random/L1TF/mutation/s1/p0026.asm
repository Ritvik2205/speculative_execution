.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdx]
lea rax, qword ptr [rdi + rax + 36248]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
or al, -57
imul dl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
add cl, -33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
lea rax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
inc eax
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
sub dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
