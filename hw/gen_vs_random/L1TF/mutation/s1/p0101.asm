.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
setnl dl
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
adc eax, -1211718481
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sbb dx, di
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
or al, al
jmp .bb_0.1
.bb_0.1:
xor al, 14
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
cmp dl, al
movzx ebx, dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
sub dil, 95
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
bt rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
