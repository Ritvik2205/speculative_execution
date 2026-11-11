.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40728]
cmp dil, 11
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovno rbx, rax
sbb al, -127
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add dl, -26 # instrumentation
adc ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
cmp al, al
and bl, 46
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
