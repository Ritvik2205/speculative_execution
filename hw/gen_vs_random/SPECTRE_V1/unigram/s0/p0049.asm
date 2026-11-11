.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rcx]
not rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
lea dx, qword ptr [rsi]
test bl, 9
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
mul dil
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
lea eax, qword ptr [rdx + rcx + 15]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 54
and dil, al
add bl, 112 # instrumentation
setnbe dil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 13
xchg sil, sil
cmovo ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
