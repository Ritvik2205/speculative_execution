.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 77
or rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and al, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and al, al
and bl, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmovnle ax, bx
cmovbe ax, si
xor dil, sil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovno rsi, rcx
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, rax
bts eax, 222
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
